from LiveScore import LiveScore
from AnalysisData import AnalysisData
from Akshat import Akshat


def main():
    live = LiveScore()
    live.start_request()
    analysis = AnalysisData(odds=3991026)
    analysis.start_request()

if __name__ == '__main__':
    main()
